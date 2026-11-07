.class public final Lgbsdk/common/host/ae$ab;
.super Ljava/lang/Object;
.source "UserProfileHelper.java"

# interfaces
.implements Lgbsdk/common/host/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/ae;->a(Lgbsdk/common/host/ap;ILorg/json/JSONObject;Lgbsdk/common/host/ad;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field public final synthetic a:I

.field public final synthetic ad:Lgbsdk/common/host/ad;

.field public final synthetic b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;Lgbsdk/common/host/ad;)V
    .locals 0

    .line 1
    iput p1, p0, Lgbsdk/common/host/ae$ab;->a:I

    iput-object p2, p0, Lgbsdk/common/host/ae$ab;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lgbsdk/common/host/ae$ab;->ad:Lgbsdk/common/host/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/ae$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "b1e8f8f2ddb3a62079e58b3952229072"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lgbsdk/common/host/ae;->ab:[I

    .line 2
    iget v1, p0, Lgbsdk/common/host/ae$ab;->a:I

    iget-object v2, p0, Lgbsdk/common/host/ae$ab;->b:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    aput v2, v0, v1

    .line 3
    sget-object v0, Lgbsdk/common/host/ae;->ac:[J

    .line 4
    iget v1, p0, Lgbsdk/common/host/ae$ab;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 5
    iget-object v0, p0, Lgbsdk/common/host/ae$ab;->ad:Lgbsdk/common/host/ad;

    check-cast v0, Lgbsdk/common/host/ae$ab;

    invoke-virtual {v0}, Lgbsdk/common/host/ae$ab;->a()V

    return-void
.end method

.method public a(I)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lgbsdk/common/host/ae$ab;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1f6ee6d83ac2ce5e523f81c68d2db616"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/ae$ab;->ad:Lgbsdk/common/host/ad;

    check-cast v0, Lgbsdk/common/host/ae$ab;

    invoke-virtual {v0, p1}, Lgbsdk/common/host/ae$ab;->a(I)V

    return-void
.end method
