.class public Lgbsdk/common/host/abke;
.super Ljava/io/IOException;
.source "NetworkNotAvailabeException.java"


# static fields
.field private static final kB:I = -0x6a

.field private static final serialVersionUID:J = -0x650cadb8cd632a53L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, p2}, Lgbsdk/common/host/abke;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abke;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCronetInternalErrorCode()I
    .locals 1

    const/16 v0, -0x6a

    return v0
.end method
