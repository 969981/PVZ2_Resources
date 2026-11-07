.class Lcom/testmainiactiviy$2;
.super Ljava/lang/Object;
.source "testmainiactiviy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/testmainiactiviy;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/testmainiactiviy;


# direct methods
.method constructor <init>(Lcom/testmainiactiviy;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/testmainiactiviy$2;->this$0:Lcom/testmainiactiviy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "\u70b9\u51fb\u89c6\u9891\u5e7f\u544a"

    .line 32
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 33
    new-instance p1, Lcom/testmainiactiviy$2$1;

    invoke-direct {p1, p0}, Lcom/testmainiactiviy$2$1;-><init>(Lcom/testmainiactiviy$2;)V

    const/16 v0, 0x2a9c

    invoke-static {p1, v0}, Lcom/talkweb/twgame/TwGameSDK;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V

    return-void
.end method
