.class public Lgbsdk/common/host/abvx$ab;
.super Ljava/lang/Object;
.source "TTNetMpaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abvx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field public static final aIR:Lgbsdk/common/host/abvx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lgbsdk/common/host/abvx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abvx;-><init>(Lgbsdk/common/host/abvx$1;)V

    sput-object v0, Lgbsdk/common/host/abvx$ab;->aIR:Lgbsdk/common/host/abvx;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
