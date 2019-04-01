.class public Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/test/chengzihao02/test2/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndroidBroadcastReceiver"
.end annotation


# instance fields
.field public activity:Lcom/test/chengzihao02/test2/MainActivity;

.field final synthetic this$0:Lcom/test/chengzihao02/test2/MainActivity;


# direct methods
.method public constructor <init>(Lcom/test/chengzihao02/test2/MainActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/test/chengzihao02/test2/MainActivity;

    .line 178
    iput-object p1, p0, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;->this$0:Lcom/test/chengzihao02/test2/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;->activity:Lcom/test/chengzihao02/test2/MainActivity;

    .line 180
    return-void
.end method

.method public constructor <init>(Lcom/test/chengzihao02/test2/MainActivity;Lcom/test/chengzihao02/test2/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/test/chengzihao02/test2/MainActivity;
    .param p2, "activity"    # Lcom/test/chengzihao02/test2/MainActivity;

    .line 181
    iput-object p1, p0, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;->this$0:Lcom/test/chengzihao02/test2/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 182
    iput-object p2, p0, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;->activity:Lcom/test/chengzihao02/test2/MainActivity;

    .line 183
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 187
    const-string v0, "hhh"

    const-string v1, "broadcast receive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    const-string v2, "hhh"

    const-string v3, "receviver null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v2, "receviver null"

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 192
    return-void

    .line 194
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v3, "method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v3, "method"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v3, ", code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v3, "code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", total msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    .local v3, "s":Ljava/lang/String;
    const-string v4, "hhh"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v4, p0, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;->activity:Lcom/test/chengzihao02/test2/MainActivity;

    if-eqz v4, :cond_1

    .line 203
    iget-object v4, p0, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;->activity:Lcom/test/chengzihao02/test2/MainActivity;

    invoke-virtual {v4, v3}, Lcom/test/chengzihao02/test2/MainActivity;->addContent(Ljava/lang/String;)V

    .line 205
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 206
    return-void
.end method
