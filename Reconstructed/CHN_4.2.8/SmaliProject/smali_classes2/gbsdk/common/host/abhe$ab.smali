.class public Lgbsdk/common/host/abhe$ab;
.super Ljava/lang/Object;
.source "CdnDeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field public static final gq:Lgbsdk/common/host/abhe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lgbsdk/common/host/abhe;

    .line 11
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/connectionclass/CdnConnectionClassManager;->getInstance()Lcom/bytedance/frameworks/baselib/network/connectionclass/CdnConnectionClassManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lgbsdk/common/host/abhe;-><init>(Lcom/bytedance/frameworks/baselib/network/connectionclass/CdnConnectionClassManager;Lgbsdk/common/host/abhe$1;)V

    sput-object v0, Lgbsdk/common/host/abhe$ab;->gq:Lgbsdk/common/host/abhe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
