.class public synthetic Lgbsdk/common/host/abhc$1;
.super Ljava/lang/Object;
.source "TTDelayStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic gg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lgbsdk/common/host/abhc$ab;->values()[Lgbsdk/common/host/abhc$ab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgbsdk/common/host/abhc$1;->gg:[I

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abhc$ab;->gi:Lgbsdk/common/host/abhc$ab;

    invoke-virtual {v1}, Lgbsdk/common/host/abhc$ab;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lgbsdk/common/host/abhc$1;->gg:[I

    sget-object v1, Lgbsdk/common/host/abhc$ab;->gj:Lgbsdk/common/host/abhc$ab;

    invoke-virtual {v1}, Lgbsdk/common/host/abhc$ab;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lgbsdk/common/host/abhc$1;->gg:[I

    sget-object v1, Lgbsdk/common/host/abhc$ab;->gk:Lgbsdk/common/host/abhc$ab;

    invoke-virtual {v1}, Lgbsdk/common/host/abhc$ab;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
