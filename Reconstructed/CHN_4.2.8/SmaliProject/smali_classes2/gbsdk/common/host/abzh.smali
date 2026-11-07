.class public final Lgbsdk/common/host/abzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aMo:Ljava/nio/ByteBuffer;

.field public final aMt:Ljava/nio/ByteBuffer;

.field public final b:J

.field public final c:J

.field public final d:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lgbsdk/common/host/abzh;->aMo:Ljava/nio/ByteBuffer;

    .line 43
    iput-wide p2, p0, Lgbsdk/common/host/abzh;->b:J

    .line 44
    iput-wide p4, p0, Lgbsdk/common/host/abzh;->c:J

    .line 45
    iput-wide p6, p0, Lgbsdk/common/host/abzh;->d:J

    .line 46
    iput-object p8, p0, Lgbsdk/common/host/abzh;->aMt:Ljava/nio/ByteBuffer;

    return-void
.end method
