.class public final Lgbsdk/common/host/abkq;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Lcom/bytedance/retrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/retrofit2/Converter<",
        "TT;",
        "Lcom/bytedance/retrofit2/mime/TypedOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final sj:Ljava/lang/String; = "application/json; charset=UTF-8"


# instance fields
.field private final si:Lcom/google/gson/Gson;

.field private final sk:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 33
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lgbsdk/common/host/abkq;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lgbsdk/common/host/abkq;->si:Lcom/google/gson/Gson;

    .line 40
    iput-object p2, p0, Lgbsdk/common/host/abkq;->sk:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lgbsdk/common/host/abkq;->m(Ljava/lang/Object;)Lcom/bytedance/retrofit2/mime/TypedOutput;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;)Lcom/bytedance/retrofit2/mime/TypedOutput;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bytedance/retrofit2/mime/TypedOutput;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 46
    new-instance v1, Ljava/io/OutputStreamWriter;

    sget-object v2, Lgbsdk/common/host/abkq;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 47
    iget-object v2, p0, Lgbsdk/common/host/abkq;->si:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lgbsdk/common/host/abkq;->sk:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 50
    new-instance p1, Lcom/bytedance/retrofit2/mime/TypedByteArray;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "application/json; charset=UTF-8"

    invoke-direct {p1, v2, v0, v1}, Lcom/bytedance/retrofit2/mime/TypedByteArray;-><init>(Ljava/lang/String;[B[Ljava/lang/String;)V

    return-object p1
.end method
