.class public Lcom/bytedance/ttgame/tob/packer/debug/StubActivity$AppCompat_T;
.super Lcom/bytedance/ttgame/tob/packer/debug/StubActivity$ac;
.source "StubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/packer/debug/StubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppCompat_T"
.end annotation


# static fields
.field public static a:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/packer/debug/StubActivity$ac;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getPluginPkgName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/packer/debug/StubActivity$AppCompat_T;->a:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "f0fa36959eb8d90e9086135dc019c878"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 37
    :cond_0
    invoke-super {p0}, Lcom/bytedance/ttgame/tob/packer/debug/StubActivity$ac;->getPluginPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
