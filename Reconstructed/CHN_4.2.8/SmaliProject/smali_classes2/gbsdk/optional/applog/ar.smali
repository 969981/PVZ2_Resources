.class public final synthetic Lgbsdk/optional/applog/ar;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/bytedance/applog/exposure/ExposureCheckType;->values()[Lcom/bytedance/applog/exposure/ExposureCheckType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgbsdk/optional/applog/ar;->a:[I

    sget-object v1, Lcom/bytedance/applog/exposure/ExposureCheckType;->THROTTLE:Lcom/bytedance/applog/exposure/ExposureCheckType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    return-void
.end method
