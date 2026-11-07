.class public final Lgbsdk/common/host/abva;
.super Ljava/lang/Object;
.source "ConsumerResult.java"


# instance fields
.field public a:Z

.field public aKL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ZLjava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lgbsdk/common/host/abva;->a:Z

    .line 21
    iput-object p2, p0, Lgbsdk/common/host/abva;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lgbsdk/common/host/abva;->aKL:Ljava/util/HashMap;

    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/util/HashMap;)Lgbsdk/common/host/abva;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lgbsdk/common/host/abva;"
        }
    .end annotation

    .line 38
    new-instance v0, Lgbsdk/common/host/abva;

    invoke-direct {v0, p0, p1, p2}, Lgbsdk/common/host/abva;-><init>(ZLjava/lang/String;Ljava/util/HashMap;)V

    return-object v0
.end method
