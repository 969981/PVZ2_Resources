.class public Lgbsdk/common/host/abho;
.super Ljava/lang/Object;


# static fields
.field private static fr:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static ay()Ljava/text/DateFormat;
    .locals 3

    sget-object v0, Lgbsdk/common/host/abho;->fr:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lgbsdk/common/host/abho;->fr:Ljava/text/DateFormat;

    :cond_0
    sget-object v0, Lgbsdk/common/host/abho;->fr:Ljava/text/DateFormat;

    return-object v0
.end method
