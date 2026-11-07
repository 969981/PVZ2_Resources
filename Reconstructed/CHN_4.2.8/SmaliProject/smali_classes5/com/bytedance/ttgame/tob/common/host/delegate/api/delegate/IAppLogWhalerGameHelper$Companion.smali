.class public final Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;
.super Ljava/lang/Object;
.source "AppLogDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006\"\u0004\u0008\u0015\u0010\u0008R\u001a\u0010\u0016\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0006\"\u0004\u0008\u0018\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;",
        "",
        "()V",
        "FAIL",
        "",
        "getFAIL",
        "()Ljava/lang/String;",
        "setFAIL",
        "(Ljava/lang/String;)V",
        "GT_AD_BUTTON_CLICK",
        "GT_AD_SHOW",
        "GT_AD_SHOW_END",
        "GT_COST_COINS",
        "GT_END_PLAY",
        "GT_GET_COINS",
        "GT_INIT_INFO",
        "GT_LEVELUP",
        "GT_START_PLAY",
        "PURCHASE",
        "SUCCESS",
        "getSUCCESS",
        "setSUCCESS",
        "UNCOMPLETED",
        "getUNCOMPLETED",
        "setUNCOMPLETED",
        "ch_delegate_api_tobRelease"
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
.field static final synthetic $$INSTANCE:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

.field private static FAIL:Ljava/lang/String; = null

.field public static final GT_AD_BUTTON_CLICK:Ljava/lang/String; = "gt_ad_button_click"

.field public static final GT_AD_SHOW:Ljava/lang/String; = "gt_ad_show"

.field public static final GT_AD_SHOW_END:Ljava/lang/String; = "gt_ad_show_end"

.field public static final GT_COST_COINS:Ljava/lang/String; = "gt_cost_coins"

.field public static final GT_END_PLAY:Ljava/lang/String; = "gt_end_play"

.field public static final GT_GET_COINS:Ljava/lang/String; = "gt_get_coins"

.field public static final GT_INIT_INFO:Ljava/lang/String; = "gt_init_info"

.field public static final GT_LEVELUP:Ljava/lang/String; = "gt_levelup"

.field public static final GT_START_PLAY:Ljava/lang/String; = "gt_start_play"

.field public static final PURCHASE:Ljava/lang/String; = "purchase"

.field private static SUCCESS:Ljava/lang/String;

.field private static UNCOMPLETED:Ljava/lang/String;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->$$INSTANCE:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

    const-string v0, "uncompleted"

    .line 278
    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->UNCOMPLETED:Ljava/lang/String;

    const-string v0, "success"

    .line 279
    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->SUCCESS:Ljava/lang/String;

    const-string v0, "fail"

    .line 280
    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->FAIL:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFAIL()Ljava/lang/String;
    .locals 1

    .line 280
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->FAIL:Ljava/lang/String;

    return-object v0
.end method

.method public final getSUCCESS()Ljava/lang/String;
    .locals 1

    .line 279
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->SUCCESS:Ljava/lang/String;

    return-object v0
.end method

.method public final getUNCOMPLETED()Ljava/lang/String;
    .locals 1

    .line 278
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->UNCOMPLETED:Ljava/lang/String;

    return-object v0
.end method

.method public final setFAIL(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "30de9fc4fa94a1b2dad3dc153d1f3c31"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    sput-object p1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->FAIL:Ljava/lang/String;

    return-void
.end method

.method public final setSUCCESS(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "2102cbbec3307abffe675f9d53cb42ef"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    sput-object p1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->SUCCESS:Ljava/lang/String;

    return-void
.end method

.method public final setUNCOMPLETED(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "07c80e5c6f2d38707a0374e4cee83d48"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    sput-object p1, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->UNCOMPLETED:Ljava/lang/String;

    return-void
.end method
