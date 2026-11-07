.class public abstract Lgbsdk/optional/applog/abcq;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgbsdk/optional/applog/abcq;->f:Z

    iput-boolean p2, p0, Lgbsdk/optional/applog/abcq;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lgbsdk/optional/applog/abcq;->h:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lgbsdk/optional/applog/abcq;->f:Z

    iput-boolean p2, p0, Lgbsdk/optional/applog/abcq;->g:Z

    iput-boolean p3, p0, Lgbsdk/optional/applog/abcq;->h:Z

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lorg/json/JSONObject;)Z
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lgbsdk/optional/applog/abcq;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lgbsdk/optional/applog/abcq;

    invoke-virtual {p0}, Lgbsdk/optional/applog/abcq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lgbsdk/optional/applog/abcq;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lgbsdk/optional/applog/abcq;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
