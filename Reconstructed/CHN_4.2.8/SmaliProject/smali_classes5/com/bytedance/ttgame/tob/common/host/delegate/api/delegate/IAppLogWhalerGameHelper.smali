.class public interface abstract Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper;
.super Ljava/lang/Object;
.source "AppLogDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008f\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016JH\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082&\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u000bH&JH\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00082&\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u000bH&JH\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00082&\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u000bH&JP\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00082&\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u000bH&J8\u0010\u0015\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00052&\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001\u0018\u0001`\u000bH&\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper;",
        "",
        "costCoins",
        "",
        "coinType",
        "",
        "method",
        "coinNum",
        "",
        "otherParams",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "endPlay",
        "ectypeName",
        "result",
        "duration",
        "getCoins",
        "levelUp",
        "lev",
        "getExp",
        "aflev",
        "startPlay",
        "Companion",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;->$$INSTANCE:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper;->Companion:Lcom/bytedance/ttgame/tob/common/host/delegate/api/delegate/IAppLogWhalerGameHelper$Companion;

    return-void
.end method


# virtual methods
.method public abstract costCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract endPlay(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCoins(Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract levelUp(IILjava/lang/String;ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startPlay(Ljava/lang/String;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
