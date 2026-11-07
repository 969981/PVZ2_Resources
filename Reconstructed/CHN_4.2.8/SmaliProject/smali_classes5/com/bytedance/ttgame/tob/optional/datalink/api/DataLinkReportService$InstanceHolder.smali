.class public final Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService$InstanceHolder;
.super Ljava/lang/Object;
.source "DataLinkReportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field static final instance:Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService$InstanceHolder;->instance:Lcom/bytedance/ttgame/tob/optional/datalink/api/DataLinkReportService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
