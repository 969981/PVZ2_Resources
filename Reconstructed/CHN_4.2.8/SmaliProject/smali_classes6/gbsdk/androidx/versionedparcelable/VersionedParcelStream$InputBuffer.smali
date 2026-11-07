.class public Lgbsdk/androidx/versionedparcelable/VersionedParcelStream$InputBuffer;
.super Ljava/lang/Object;
.source "VersionedParcelStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgbsdk/androidx/versionedparcelable/VersionedParcelStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputBuffer"
.end annotation


# instance fields
.field final mFieldId:I

.field final mInputStream:Ljava/io/DataInputStream;

.field private final mSize:I


# direct methods
.method constructor <init>(IILjava/io/DataInputStream;)V
    .locals 0

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput p2, p0, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mSize:I

    .line 512
    iput p1, p0, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mFieldId:I

    .line 513
    new-array p1, p2, [B

    .line 514
    invoke-virtual {p3, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 515
    new-instance p2, Ljava/io/DataInputStream;

    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p2, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lgbsdk/androidx/versionedparcelable/VersionedParcelStream$InputBuffer;->mInputStream:Ljava/io/DataInputStream;

    return-void
.end method
