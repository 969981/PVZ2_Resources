.class public Lcom/bytedance/ttgame/tob/packer/debug/StubActivity$ab;
.super Lcom/volcengine/zeus/activity/GenerateProxyActivity;
.source "StubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/packer/debug/StubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ab"
.end annotation


# static fields
.field public static b:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/volcengine/zeus/activity/GenerateProxyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPluginPkgName()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/packer/debug/StubActivity$ab;->b:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "1cfb3d3a2449a83b016a704bc374bfc7"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 16
    :cond_0
    invoke-static {}, Lcom/bytedance/ttgame/tob/packer/debug/StubActivity;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
