.class public Lcom/tw/pay/sdk/util/TwWebUtil$jsOfMine;
.super Ljava/lang/Object;
.source "TwWebUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/pay/sdk/util/TwWebUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "jsOfMine"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwWebUtil;


# direct methods
.method public constructor <init>(Lcom/tw/pay/sdk/util/TwWebUtil;Landroid/content/Context;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$jsOfMine;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwWebUtil$jsOfMine;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public click(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 205
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwWebUtil$jsOfMine;->this$0:Lcom/tw/pay/sdk/util/TwWebUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwWebUtil;->access$100(Lcom/tw/pay/sdk/util/TwWebUtil;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
