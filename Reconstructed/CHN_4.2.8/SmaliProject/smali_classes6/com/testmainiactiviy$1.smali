.class Lcom/testmainiactiviy$1;
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

    .line 22
    iput-object p1, p0, Lcom/testmainiactiviy$1;->this$0:Lcom/testmainiactiviy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "\u8fdb\u884c\u521d\u59cb\u5316"

    .line 25
    invoke-static {p1}, Lcom/talkweb/twgame/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/testmainiactiviy$1;->this$0:Lcom/testmainiactiviy;

    const-string v0, "111231"

    invoke-static {p1, v0}, Lcom/talkweb/twgame/TwGameSDK;->init(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
