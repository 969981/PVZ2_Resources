.class public final enum Losdk/okhttp3/HttpUrl$Builder$ParseResult;
.super Ljava/lang/Enum;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Losdk/okhttp3/HttpUrl$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParseResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Losdk/okhttp3/HttpUrl$Builder$ParseResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Losdk/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_HOST:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum INVALID_PORT:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum MISSING_SCHEME:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum SUCCESS:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

.field public static final enum UNSUPPORTED_SCHEME:Losdk/okhttp3/HttpUrl$Builder$ParseResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1314
    new-instance v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Losdk/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1315
    new-instance v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "MISSING_SCHEME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Losdk/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1316
    new-instance v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "UNSUPPORTED_SCHEME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Losdk/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1317
    new-instance v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_PORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Losdk/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1318
    new-instance v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    const-string v1, "INVALID_HOST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Losdk/okhttp3/HttpUrl$Builder$ParseResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    const/4 v1, 0x5

    new-array v1, v1, [Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    .line 1313
    sget-object v7, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v7, v1, v2

    sget-object v2, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v2, v1, v3

    sget-object v2, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v2, v1, v4

    sget-object v2, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1313
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Losdk/okhttp3/HttpUrl$Builder$ParseResult;
    .locals 1

    .line 1313
    const-class v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    return-object p0
.end method

.method public static values()[Losdk/okhttp3/HttpUrl$Builder$ParseResult;
    .locals 1

    .line 1313
    sget-object v0, Losdk/okhttp3/HttpUrl$Builder$ParseResult;->$VALUES:[Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    invoke-virtual {v0}, [Losdk/okhttp3/HttpUrl$Builder$ParseResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Losdk/okhttp3/HttpUrl$Builder$ParseResult;

    return-object v0
.end method
