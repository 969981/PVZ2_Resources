.class public final synthetic Lgbsdk/optional/applog/abcd;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lgbsdk/optional/applog/abfi;->values()[Lgbsdk/optional/applog/abfi;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lgbsdk/optional/applog/abcd;->a:[I

    sget-object v1, Lgbsdk/optional/applog/abfi;->e:Lgbsdk/optional/applog/abfi;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lgbsdk/optional/applog/abcd;->a:[I

    sget-object v1, Lgbsdk/optional/applog/abfi;->a:Lgbsdk/optional/applog/abfi;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lgbsdk/optional/applog/abcd;->a:[I

    sget-object v1, Lgbsdk/optional/applog/abfi;->c:Lgbsdk/optional/applog/abfi;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lgbsdk/optional/applog/abcd;->a:[I

    sget-object v1, Lgbsdk/optional/applog/abfi;->d:Lgbsdk/optional/applog/abfi;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
