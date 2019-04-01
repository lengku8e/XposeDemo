package leng.hook;

import android.app.Notification;
import android.os.Build;
import android.os.Bundle;

import java.util.Arrays;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage;

public class HookTest implements IXposedHookLoadPackage {

    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam loadPackageParam) throws Throwable {
        if (loadPackageParam.packageName.equals("leng.xposedemo")) {
            Class clazz = loadPackageParam.classLoader.loadClass("leng.xposedemo.MainActivity");
            XposedHelpers.findAndHookMethod(clazz, "toastMessage", new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                    super.beforeHookedMethod(param);
                }

                @Override
                protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                    param.setResult("hook after");
                }
            });
        } else  {
            final Class clazz = XposedHelpers.findClass(
                    "android.app.NotificationManager", loadPackageParam.classLoader);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
                XposedHelpers.findAndHookMethod(clazz, "notify"
                        , String.class, int.class, Notification.class
                        , new XC_MethodHook() {
                            @Override
                            protected void beforeHookedMethod(MethodHookParam param) throws Throwable {
                                super.beforeHookedMethod(param);
                            }

                            @Override
                            protected void afterHookedMethod(MethodHookParam param) throws Throwable {
                                super.afterHookedMethod(param);
                                XposedBridge.log("methodHookParam.args:  " + Arrays.toString(param.args));
                                //通过param拿到第三个入参notification对象
                                Notification notification = (Notification) param.args[2];
                                //获得包名
                                String aPackage = notification.contentView.getPackage();
                                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT) {
                                    Bundle bundle = notification.extras;
                                    String title = (String) bundle.get("android.title");
                                    String text = (String) bundle.get("android.text");
                                    XposedBridge.log("loadpackage"+ aPackage);
                                    XposedBridge.log("tickerText" + notification.tickerText.toString());
                                    XposedBridge.log("title"+ title);
                                    XposedBridge.log("text"+ text);
                                }
                            }
                        });

            }
        }
    }
}
