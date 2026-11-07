.class public Lcom/bytedance/ttgame/tob/common/host/api/exception/ParameterErrorException;
.super Ljava/lang/RuntimeException;
.source "ParameterErrorException.java"


# static fields
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private extraInfo:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/exception/ParameterErrorException;->extraInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/api/exception/ParameterErrorException;->extraInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/api/exception/ParameterErrorException;->extraInfo:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/api/exception/ParameterErrorException;->extraInfo:Lorg/json/JSONObject;

    .line 25
    iput-object p3, p0, Lcom/bytedance/ttgame/tob/common/host/api/exception/ParameterErrorException;->extraInfo:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getExtraInfo()Lorg/json/JSONObject;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/api/exception/ParameterErrorException;->extraInfo:Lorg/json/JSONObject;

    return-object v0
.end method
