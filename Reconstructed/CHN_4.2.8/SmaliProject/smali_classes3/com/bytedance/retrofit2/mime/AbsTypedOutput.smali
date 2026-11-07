.class public abstract Lcom/bytedance/retrofit2/mime/AbsTypedOutput;
.super Ljava/lang/Object;
.source "AbsTypedOutput.java"

# interfaces
.implements Lcom/bytedance/retrofit2/mime/TypedOutput;


# static fields
.field protected static final MAX_ENCRYPT_LENGTH:I = 0x19000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract interceptRequestBody()Z
.end method

.method public length()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public md5Stub()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method
