.class public Lgbsdk/common/host/abki;
.super Ljava/lang/Object;
.source "TTDispatchResult.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public jP:Ljava/lang/String;

.field public jQ:Ljava/lang/String;

.field public jR:Ljava/lang/String;

.field public jS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lgbsdk/common/host/abki;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abki;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 8
    iput-object v0, p0, Lgbsdk/common/host/abki;->jR:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lgbsdk/common/host/abki;->jS:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lgbsdk/common/host/abki;->jP:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lgbsdk/common/host/abki;->jQ:Ljava/lang/String;

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 16
    iput-object p3, p0, Lgbsdk/common/host/abki;->jR:Ljava/lang/String;

    .line 19
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 20
    iput-object p4, p0, Lgbsdk/common/host/abki;->jS:Ljava/lang/String;

    :cond_1
    return-void
.end method
