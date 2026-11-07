.class public final Lgbsdk/common/host/abkn;
.super Lcom/bytedance/retrofit2/Converter$Factory;
.source "GsonConverterFactory.java"


# instance fields
.field private final si:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/bytedance/retrofit2/Converter$Factory;-><init>()V

    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lgbsdk/common/host/abkn;->si:Lcom/google/gson/Gson;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Lcom/google/gson/Gson;)Lgbsdk/common/host/abkn;
    .locals 1

    .line 51
    new-instance v0, Lgbsdk/common/host/abkn;

    invoke-direct {v0, p0}, Lgbsdk/common/host/abkn;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method public static cC()Lgbsdk/common/host/abkn;
    .locals 1

    .line 43
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lgbsdk/common/host/abkn;->a(Lcom/google/gson/Gson;)Lgbsdk/common/host/abkn;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/Converter<",
            "*",
            "Lcom/bytedance/retrofit2/mime/TypedOutput;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object p2, p0, Lgbsdk/common/host/abkn;->si:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    .line 72
    new-instance p2, Lgbsdk/common/host/abkq;

    iget-object p3, p0, Lgbsdk/common/host/abkn;->si:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lgbsdk/common/host/abkq;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lcom/bytedance/retrofit2/Retrofit;)Lcom/bytedance/retrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/bytedance/retrofit2/Retrofit;",
            ")",
            "Lcom/bytedance/retrofit2/Converter<",
            "Lcom/bytedance/retrofit2/mime/TypedInput;",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object p2, p0, Lgbsdk/common/host/abkn;->si:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    .line 65
    new-instance p2, Lgbsdk/common/host/abkp;

    iget-object p3, p0, Lgbsdk/common/host/abkn;->si:Lcom/google/gson/Gson;

    invoke-direct {p2, p3, p1}, Lgbsdk/common/host/abkp;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method
