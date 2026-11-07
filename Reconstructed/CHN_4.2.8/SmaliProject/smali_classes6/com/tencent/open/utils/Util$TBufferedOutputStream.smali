.class Lcom/tencent/open/utils/Util$TBufferedOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/open/utils/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TBufferedOutputStream"
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 258
    iput p1, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    return v0
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 264
    iget v0, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/tencent/open/utils/Util$TBufferedOutputStream;->a:I

    return-void
.end method
