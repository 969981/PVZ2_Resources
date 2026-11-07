.class public Lgbsdk/common/host/abpi$ac;
.super Ljava/lang/Object;
.source "MainLooperIdleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ac"
.end annotation


# static fields
.field public static yv:Lgbsdk/common/host/abpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lgbsdk/common/host/abpi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgbsdk/common/host/abpi;-><init>(Lgbsdk/common/host/abpi$1;)V

    sput-object v0, Lgbsdk/common/host/abpi$ac;->yv:Lgbsdk/common/host/abpi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
