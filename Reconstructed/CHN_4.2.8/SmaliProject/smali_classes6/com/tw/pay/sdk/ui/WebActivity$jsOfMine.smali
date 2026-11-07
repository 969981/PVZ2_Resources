.class public Lcom/tw/pay/sdk/ui/WebActivity$jsOfMine;
.super Ljava/lang/Object;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/ui/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "jsOfMine"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/tw/pay/sdk/ui/WebActivity;


# direct methods
.method public constructor <init>(Lcom/tw/pay/sdk/ui/WebActivity;Landroid/content/Context;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$jsOfMine;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/tw/pay/sdk/ui/WebActivity$jsOfMine;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 213
    iget-object p1, p0, Lcom/tw/pay/sdk/ui/WebActivity$jsOfMine;->this$0:Lcom/tw/pay/sdk/ui/WebActivity;

    invoke-virtual {p1}, Lcom/tw/pay/sdk/ui/WebActivity;->finish()V

    return-void
.end method
