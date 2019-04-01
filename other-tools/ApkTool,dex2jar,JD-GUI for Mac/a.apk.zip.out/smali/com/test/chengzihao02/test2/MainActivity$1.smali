.class Lcom/test/chengzihao02/test2/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/test/chengzihao02/test2/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/test/chengzihao02/test2/MainActivity;


# direct methods
.method constructor <init>(Lcom/test/chengzihao02/test2/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/test/chengzihao02/test2/MainActivity;

    .line 102
    iput-object p1, p0, Lcom/test/chengzihao02/test2/MainActivity$1;->this$0:Lcom/test/chengzihao02/test2/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity$1;->this$0:Lcom/test/chengzihao02/test2/MainActivity;

    invoke-static {v0}, Lcom/test/chengzihao02/test2/MainActivity;->access$000(Lcom/test/chengzihao02/test2/MainActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "uri":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    const-string v2, "uri"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/test/chengzihao02/test2/MainActivity$1;->this$0:Lcom/test/chengzihao02/test2/MainActivity;

    invoke-virtual {v2, v1}, Lcom/test/chengzihao02/test2/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "uri":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    iget-object v1, p0, Lcom/test/chengzihao02/test2/MainActivity$1;->this$0:Lcom/test/chengzihao02/test2/MainActivity;

    const-string v2, "URI\u683c\u5f0f\u9519\u8bef\uff0c\u65e0\u5e94\u7528\u63a5\u6536"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
