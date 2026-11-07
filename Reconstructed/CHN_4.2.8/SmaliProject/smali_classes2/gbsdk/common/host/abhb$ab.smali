.class public Lgbsdk/common/host/abhb$ab;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field public static final gy:Lgbsdk/common/host/abhb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lgbsdk/common/host/abhb;

    .line 37
    invoke-static {}, Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager;->getInstance()Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lgbsdk/common/host/abhb;-><init>(Lcom/bytedance/frameworks/baselib/network/connectionclass/ConnectionClassManager;)V

    sput-object v0, Lgbsdk/common/host/abhb$ab;->gy:Lgbsdk/common/host/abhb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
