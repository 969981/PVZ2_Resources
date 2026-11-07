.class public final Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;
.super Ljava/lang/Object;
.source "InitSwitchData.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0086\u0008\u0018\u0000 ,2\u00020\u0001:\u0001,Bk\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u000fJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u00c6\u0003J\u000f\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0006H\u00c6\u0003J\t\u0010!\u001a\u00020\nH\u00c6\u0003J\t\u0010\"\u001a\u00020\nH\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J\t\u0010$\u001a\u00020\u0008H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003Jo\u0010&\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003H\u00c6\u0001J\u0006\u0010\'\u001a\u00020\nJ\u0013\u0010(\u001a\u00020\n2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020\u0003H\u00d6\u0001J\t\u0010+\u001a\u00020\u0008H\u00d6\u0001R\u001c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u000e\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0016\u0010\u000c\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0011R\u0016\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0016R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0016\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0016\u0010\r\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006-"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;",
        "",
        "osdkStatus",
        "",
        "dataLinkStatus",
        "eventList",
        "",
        "customEventList",
        "",
        "onlyDataCheckStatusOpen",
        "",
        "osdkStatusGetFromConfig",
        "dataLinkStatusGetFromConfig",
        "osdkStatusOffReason",
        "dataFrom",
        "(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;I)V",
        "getCustomEventList",
        "()Ljava/util/List;",
        "getDataFrom",
        "()I",
        "getDataLinkStatus",
        "getDataLinkStatusGetFromConfig",
        "()Z",
        "getEventList",
        "getOnlyDataCheckStatusOpen",
        "getOsdkStatus",
        "getOsdkStatusGetFromConfig",
        "getOsdkStatusOffReason",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "enableOsdkInit",
        "equals",
        "other",
        "hashCode",
        "toString",
        "Companion",
        "ch_api_tobRelease"
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData$Companion;

.field public static final DATA_FROM_CACHE:I = 0x2

.field public static final DATA_FROM_DEFAULT:I = 0x0

.field public static final DATA_FROM_REQUEST:I = 0x1

.field public static final DATA_FROM_SWITCH_DISABLE:I = -0x1

.field public static final STATUS_OFF:I = 0x0

.field public static final STATUS_ON:I = 0x1

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final customEventList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_event_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dataFrom:I

.field private final dataLinkStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datalink_status"
    .end annotation
.end field

.field private final dataLinkStatusGetFromConfig:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "datalink_status_get_from_config"
    .end annotation
.end field

.field private final eventList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "event_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final onlyDataCheckStatusOpen:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "only_data_check_status_open"
    .end annotation
.end field

.field private final osdkStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osdk_status"
    .end annotation
.end field

.field private final osdkStatusGetFromConfig:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osdk_status_get_from_config"
    .end annotation
.end field

.field private final osdkStatusOffReason:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "osdk_status_off_reason"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->Companion:Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;-><init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const-string v0, "eventList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customEventList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osdkStatusOffReason"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    .line 11
    iput p2, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    .line 16
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    .line 19
    iput-object p4, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    .line 22
    iput-boolean p5, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    .line 25
    iput-boolean p6, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    .line 28
    iput-boolean p7, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    .line 31
    iput-object p8, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    .line 34
    iput p9, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Integer;

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x64

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 20
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const-string v9, ""

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v5, p9

    :goto_8
    move-object p1, p0

    move p2, v1

    move p3, v3

    move-object p4, v2

    move-object p5, v4

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v5

    .line 5
    invoke-direct/range {p1 .. p10}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;-><init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;IILjava/lang/Object;)Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;
    .locals 13

    move-object v0, p0

    move/from16 v1, p10

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    new-instance v3, Ljava/lang/Integer;

    move v4, p1

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/Integer;

    move v6, p2

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    new-instance v3, Ljava/lang/Byte;

    move/from16 v7, p5

    invoke-direct {v3, v7}, Ljava/lang/Byte;-><init>(B)V

    const/4 v8, 0x5

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/Byte;

    move/from16 v8, p6

    invoke-direct {v3, v8}, Ljava/lang/Byte;-><init>(B)V

    const/4 v9, 0x6

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/Byte;

    move/from16 v9, p7

    invoke-direct {v3, v9}, Ljava/lang/Byte;-><init>(B)V

    const/4 v10, 0x7

    aput-object v3, v2, v10

    const/16 v3, 0x8

    aput-object p8, v2, v3

    new-instance v3, Ljava/lang/Integer;

    move/from16 v10, p9

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    const/16 v11, 0x9

    aput-object v3, v2, v11

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    const/16 v11, 0xa

    aput-object v3, v2, v11

    const/16 v3, 0xb

    aput-object p11, v2, v3

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const/4 v11, 0x0

    const-string v12, "47a5204f685d217f2dd4ff61cea8f635"

    invoke-static {v2, v11, v3, v5, v12}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    return-object v0

    :cond_0
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    move v4, v2

    :cond_1
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_2

    iget v2, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    move v6, v2

    :cond_2
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    goto :goto_0

    :cond_3
    move-object/from16 v2, p3

    :goto_0
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    goto :goto_1

    :cond_4
    move-object/from16 v3, p4

    :goto_1
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_5

    iget-boolean v5, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    goto :goto_2

    :cond_5
    move v5, v7

    :goto_2
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_6

    iget-boolean v7, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    goto :goto_3

    :cond_6
    move v7, v8

    :goto_3
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_7

    iget-boolean v8, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    goto :goto_4

    :cond_7
    move v8, v9

    :goto_4
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object/from16 v9, p8

    :goto_5
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    move v10, v1

    :cond_9
    move p1, v4

    move p2, v6

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move/from16 p5, v5

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    invoke-virtual/range {p0 .. p9}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->copy(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;I)Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    return v0
.end method

.method public final component3()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    return v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    return v0
.end method

.method public final copy(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;I)Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "I)",
            "Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;"
        }
    .end annotation

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v8, p8

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    move v2, p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x0

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/Integer;

    move/from16 v6, p2

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x1

    aput-object v1, v0, v7

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    new-instance v1, Ljava/lang/Byte;

    move/from16 v7, p5

    invoke-direct {v1, v7}, Ljava/lang/Byte;-><init>(B)V

    const/4 v9, 0x4

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/Byte;

    move/from16 v9, p6

    invoke-direct {v1, v9}, Ljava/lang/Byte;-><init>(B)V

    const/4 v10, 0x5

    aput-object v1, v0, v10

    new-instance v1, Ljava/lang/Byte;

    move/from16 v10, p7

    invoke-direct {v1, v10}, Ljava/lang/Byte;-><init>(B)V

    const/4 v11, 0x6

    aput-object v1, v0, v11

    const/4 v1, 0x7

    aput-object v8, v0, v1

    new-instance v1, Ljava/lang/Integer;

    move/from16 v11, p9

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    const/16 v12, 0x8

    aput-object v1, v0, v12

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v12, "6f7c323963232864c651b5143f453eb4"

    move-object v13, p0

    invoke-static {v0, p0, v1, v5, v12}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    return-object v0

    :cond_0
    const-string v0, "eventList"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customEventList"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "osdkStatusOffReason"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    move-object v0, v12

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;-><init>(IILjava/util/List;Ljava/util/List;ZZZLjava/lang/String;I)V

    return-object v12
.end method

.method public final enableOsdkInit()Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "11e260ce4b3fa4cffbbdd32681a9c933"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    if-nez v1, :cond_2

    return v2

    :cond_2
    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    iget v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    iget-boolean v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    iget-boolean v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    iget-boolean v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    iget p1, p1, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCustomEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    return-object v0
.end method

.method public final getDataFrom()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    return v0
.end method

.method public final getDataLinkStatus()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    return v0
.end method

.method public final getDataLinkStatusGetFromConfig()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    return v0
.end method

.method public final getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    return-object v0
.end method

.method public final getOnlyDataCheckStatusOpen()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    return v0
.end method

.method public final getOsdkStatus()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    return v0
.end method

.method public final getOsdkStatusGetFromConfig()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    return v0
.end method

.method public final getOsdkStatusOffReason()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e08f6f791169dc5efb5c3e2f00874c53"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "cf17cb77a7c2b25782f456659d30b676"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitSwitchData(osdkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dataLinkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->eventList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customEventList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->customEventList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onlyDataCheckStatusOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->onlyDataCheckStatusOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", osdkStatusGetFromConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusGetFromConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataLinkStatusGetFromConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataLinkStatusGetFromConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", osdkStatusOffReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->osdkStatusOffReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bytedance/ttgame/tob/common/host/api/config/InitSwitchData;->dataFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
