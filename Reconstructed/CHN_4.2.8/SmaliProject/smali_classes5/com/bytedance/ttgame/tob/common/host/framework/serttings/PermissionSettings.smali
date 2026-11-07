.class public final Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;
.super Ljava/lang/Object;
.source "PermissionSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000b\u001a\u00020\u000cH\u00d6\u0001J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;",
        "",
        "target30Compat",
        "",
        "(Z)V",
        "getTarget30Compat",
        "()Z",
        "component1",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final target30Compat:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "target_30_compat"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;ZILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    aput-object p3, v0, v1

    sget-object p3, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v1, 0x0

    const-string v3, "045f1a4ae9fff4095f3b8b12132cec93"

    invoke-static {v0, v1, p3, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p0, p3, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    return-object p0

    :cond_0
    and-int/2addr p2, v2

    if-eqz p2, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->copy(Z)Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    return v0
.end method

.method public final copy(Z)Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "3a17854b27cfea21fea8e331707934b4"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    return-object p1

    :cond_0
    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    invoke-direct {v0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;-><init>(Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    iget-boolean p1, p1, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getTarget30Compat()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "14d07c0b640e82da8f497c83619aec80"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PermissionSettings(target30Compat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/serttings/PermissionSettings;->target30Compat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
