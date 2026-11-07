.class public Lgbsdk/common/host/abis$ab;
.super Ljava/lang/Object;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lgbsdk/common/host/abis$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgbsdk/common/host/abis$ab;-><init>()V

    return-void
.end method


# virtual methods
.method public D(Landroid/content/Context;)Lgbsdk/common/host/abjt;
    .locals 0

    .line 14
    invoke-static {p1}, Lgbsdk/common/host/abjb;->I(Landroid/content/Context;)Lgbsdk/common/host/abjb;

    move-result-object p1

    return-object p1
.end method
