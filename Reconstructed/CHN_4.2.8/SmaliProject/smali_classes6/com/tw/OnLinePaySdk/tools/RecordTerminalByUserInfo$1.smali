.class Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;
.super Ljava/lang/Object;
.source "RecordTerminalByUserInfo.java"

# interfaces
.implements Lcom/tencent/map/geolocation/TencentLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;->this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/tencent/map/geolocation/TencentLocation;ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 33
    iget-object p2, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;->this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;

    invoke-static {p2}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->access$0(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)Landroid/content/Context;

    move-result-object p3

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;->this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->access$1(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, p1, v0}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->access$2(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;Landroid/content/Context;Lcom/tencent/map/geolocation/TencentLocation;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;->this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;

    invoke-static {p1}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->access$0(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/map/geolocation/TencentLocationManager;->getInstance(Landroid/content/Context;)Lcom/tencent/map/geolocation/TencentLocationManager;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo$1;->this$0:Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;

    invoke-static {p2}, Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;->access$3(Lcom/tw/OnLinePaySdk/tools/RecordTerminalByUserInfo;)Lcom/tencent/map/geolocation/TencentLocationListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tencent/map/geolocation/TencentLocationManager;->removeUpdates(Lcom/tencent/map/geolocation/TencentLocationListener;)V

    :cond_0
    return-void
.end method

.method public onStatusUpdate(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "\u5b9a\u4f4d,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
