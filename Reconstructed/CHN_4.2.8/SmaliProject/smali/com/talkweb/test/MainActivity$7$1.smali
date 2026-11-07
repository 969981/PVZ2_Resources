.class Lcom/talkweb/test/MainActivity$7$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/talkweb/twOfflineSdk/callback/TwOfflineCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/test/MainActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/talkweb/test/MainActivity$7;


# direct methods
.method constructor <init>(Lcom/talkweb/test/MainActivity$7;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/talkweb/test/MainActivity$7$1;->this$1:Lcom/talkweb/test/MainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 0

    .line 361
    const-class p1, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;

    .line 362
    invoke-static {p2, p1}, Lcom/talkweb/twOfflineSdk/tools/Tools;->ToObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;

    .line 363
    iget p1, p1, Lcom/talkweb/twOfflineSdk/bean/QueryOrderResultBean;->code:I

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "\u67e5\u8be2\u5931\u8d25----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_1
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "\u65e0\u7f51\u7edc\u8fde\u63a5----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "\u521d\u59cb\u5316\u5931\u8d25----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_3
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "\u672a\u8ba2\u8d2d----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 365
    :cond_4
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p2, "\u5df2\u8ba2\u8d2d----------------"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
