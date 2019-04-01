.class public Lcom/test/chengzihao02/test2/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;
    }
.end annotation


# instance fields
.field private contentTextView:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private receiver:Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;

.field private uriEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/test/chengzihao02/test2/MainActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/test/chengzihao02/test2/MainActivity;

    .line 18
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->uriEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private bindView()V
    .locals 1

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->handler:Landroid/os/Handler;

    .line 61
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Lcom/test/chengzihao02/test2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->uriEditText:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/test/chengzihao02/test2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->contentTextView:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/test/chengzihao02/test2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v0, 0x7f07005d

    invoke-virtual {p0, v0}, Lcom/test/chengzihao02/test2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/test/chengzihao02/test2/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method public addContent(Ljava/lang/String;)V
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->contentTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "content":Ljava/lang/String;
    const-string v1, "hhh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LineNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "lastLine":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 169
    .local v2, "lineNum":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v3, p0, Lcom/test/chengzihao02/test2/MainActivity;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "lastLine":Ljava/lang/String;
    .end local v2    # "lineNum":I
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f07005d

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, 0x7f07007e

    if-eq v0, v1, :cond_2

    const v1, 0x7f07008f

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->receiver:Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->receiver:Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/test/chengzihao02/test2/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    :cond_1
    const-string v0, "\u6ce8\u9500\u5e7f\u64ad\u63a5\u6536\u5668\u6210\u529f\uff01"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/test/chengzihao02/test2/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/test/chengzihao02/test2/MainActivity$1;-><init>(Lcom/test/chengzihao02/test2/MainActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->receiver:Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;

    if-nez v0, :cond_4

    .line 88
    new-instance v0, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;

    invoke-direct {v0, p0, p0}, Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;-><init>(Lcom/test/chengzihao02/test2/MainActivity;Lcom/test/chengzihao02/test2/MainActivity;)V

    iput-object v0, p0, Lcom/test/chengzihao02/test2/MainActivity;->receiver:Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;

    .line 90
    :cond_4
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.baidu.BaiduMap.OPENAPI_CALLBACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/test/chengzihao02/test2/MainActivity;->receiver:Lcom/test/chengzihao02/test2/MainActivity$AndroidBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/test/chengzihao02/test2/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    const-string v1, "\u6ce8\u518c\u5e7f\u64ad\u63a5\u6536\u5668\u6210\u529f\uff01"

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 94
    nop

    .line 124
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/test/chengzihao02/test2/MainActivity;->setContentView(I)V

    .line 39
    invoke-direct {p0}, Lcom/test/chengzihao02/test2/MainActivity;->bindView()V

    .line 41
    return-void
.end method
