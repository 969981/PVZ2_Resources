.class public final Lgbsdk/common/host/abxj$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/common/host/abxj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# instance fields
.field public final aMo:Ljava/nio/ByteBuffer;

.field public final b:[B


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;[B)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lgbsdk/common/host/abxj$ab;->aMo:Ljava/nio/ByteBuffer;

    .line 54
    iput-object p2, p0, Lgbsdk/common/host/abxj$ab;->b:[B

    return-void
.end method
