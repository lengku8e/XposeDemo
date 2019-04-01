package leng.hook;

import android.os.Process;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XC_LoadPackage;
import leng.xposedemo.BuildConfig;

public class AllAppDebugble implements IXposedHookLoadPackage, IXposedHookZygoteInit {
    private static final int DEBUG_ENABLE_DEBUGGER = 0x1;
    private XC_MethodHook debugAppsHook = new XC_MethodHook() {
        @Override
        protected void beforeHookedMethod(MethodHookParam param)
                throws Throwable {
            XposedBridge.log("-- beforeHookedMethod :" + param.args[1]);
            int id = 5;
            int flags = (Integer) param.args[id];
            if ((flags & DEBUG_ENABLE_DEBUGGER) == 0) {
                flags |= DEBUG_ENABLE_DEBUGGER;
            }
            param.args[id] = flags;
            if (BuildConfig.DEBUG) {
                XposedBridge.log("-- app debugable flags to 1 :" + param.args[1]);
            }
        }
    };

    @Override
    public void handleLoadPackage(final XC_LoadPackage.LoadPackageParam loadPackageParam) throws Throwable {
//        if (BuildConfig.DEBUG) {
//            XposedBridge.log("-- handle package: " + loadPackageParam.packageName + " process: " + loadPackageParam.processName);
//        }
//
//        if (loadPackageParam.appInfo == null ||
//                (loadPackageParam.appInfo.flags & (ApplicationInfo.FLAG_SYSTEM | ApplicationInfo.FLAG_UPDATED_SYSTEM_APP)) != 0) {
//            XposedBridge.log("-- appInfo: " + loadPackageParam.appInfo);
//            return;
//        }
//
//        XposedBridge.log("-- start hook, appInfo: " + loadPackageParam.appInfo);
//
//        Method start = findMethodExact(Process.class, "start",
//                String.class,
//                String.class,
//                Integer.TYPE,
//                Integer.TYPE,
//                int[].class,
//                Integer.TYPE,
//                Integer.TYPE,
//                Integer.TYPE,
//                String.class,
//                String.class,
//                String.class,
//                String.class,
//                String[].class);
//
//        XposedBridge.log("-- find method, method: " + start.toString());
//
//        XposedBridge.hookMethod(start, debugAppsHook);

    }

    @Override
    public void initZygote(final StartupParam startupParam) throws Throwable {
        XposedBridge.hookAllMethods(Process.class, "start", debugAppsHook);
    }
}
