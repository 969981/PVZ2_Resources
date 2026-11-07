.class public Lgbsdk/common/host/abrn$2;
.super Ljava/lang/Object;
.source "ApkChannelUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgbsdk/common/host/abrn;->ei()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field final synthetic CD:Ljava/lang/String;

.field final synthetic CE:J

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 311
    iput-object p1, p0, Lgbsdk/common/host/abrn$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lgbsdk/common/host/abrn$2;->CD:Ljava/lang/String;

    iput-wide p3, p0, Lgbsdk/common/host/abrn$2;->CE:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lgbsdk/common/host/abrn$2;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8f8c98cb18e4f3c4d34c3c456f7525d1"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lgbsdk/common/host/abrn$2;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lgbsdk/common/host/abrn$2;->CD:Ljava/lang/String;

    sget-object v2, Lgbsdk/common/host/abrn;->Ca:Ljava/lang/String;

    iget-wide v3, p0, Lgbsdk/common/host/abrn$2;->CE:J

    invoke-static {v0, v1, v2, v3, v4}, Lgbsdk/common/host/abrn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
