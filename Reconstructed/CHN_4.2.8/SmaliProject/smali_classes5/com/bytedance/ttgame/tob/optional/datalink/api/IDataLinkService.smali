.class public interface abstract Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkService;
.super Ljava/lang/Object;
.source "IDataLinkService.java"

# interfaces
.implements Lcom/bytedance/ttgame/tob/framework/service/annotation/ILifecycleService;


# annotations
.annotation runtime Lcom/bytedance/ttgame/tob/common/host/base/api/service/Public;
.end annotation


# static fields
.field public static final PAY_TYPE_VALUE_HIGH:Ljava/lang/String; = "high"

.field public static final PAY_TYPE_VALUE_LOW:Ljava/lang/String; = "low"

.field public static final PAY_TYPE_VALUE_MEDIUM:Ljava/lang/String; = "medium"


# virtual methods
.method public abstract customEvent(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract customEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z
.end method

.method public abstract getDataLinkEventListener()Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkEventListener;
.end method

.method public abstract onAccountLogin(Ljava/lang/String;J)Z
.end method

.method public abstract onAccountLogin(Ljava/lang/String;Ljava/lang/String;J)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAccountRegister(Ljava/lang/String;)Z
.end method

.method public abstract onAccountRegister(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onGameActive()Z
.end method

.method public abstract onPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract onPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPaySpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onPaySpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
.end method

.method public abstract onPaySpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onPaySpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract onRoleLogin(Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method public abstract onRoleRegister(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setDataLinkEventListener(Lcom/bytedance/ttgame/tob/optional/datalink/api/IDataLinkEventListener;)V
.end method

.method public abstract updateCloudGameInfo(Lcom/bytedance/ttgame/tob/common/host/api/config/CloudGameInfo;)Z
.end method
