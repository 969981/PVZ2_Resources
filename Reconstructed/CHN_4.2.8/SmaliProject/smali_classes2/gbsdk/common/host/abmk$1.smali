.class public synthetic Lgbsdk/common/host/abmk$1;
.super Ljava/lang/Object;
.source "DispatchStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abmk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic re:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    invoke-static {}, Lgbsdk/common/host/abmk$ab;->values()[Lgbsdk/common/host/abmk$ab;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgbsdk/common/host/abmk$1;->re:[I

    :try_start_0
    sget-object v1, Lgbsdk/common/host/abmk$ab;->rg:Lgbsdk/common/host/abmk$ab;

    invoke-virtual {v1}, Lgbsdk/common/host/abmk$ab;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
