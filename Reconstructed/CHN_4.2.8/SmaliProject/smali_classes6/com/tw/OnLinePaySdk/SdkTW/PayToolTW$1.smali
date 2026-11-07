.class Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$1;
.super Ljava/lang/Object;
.source "PayToolTW.java"

# interfaces
.implements Lcom/tw/gamesdk/callback/GameSDKCallback$InitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->initSDK(Landroid/content/Context;Ljava/lang/String;ZLcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$1;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$1;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {v0}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$000(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)V

    const-string v0, "\u521d\u59cb\u5316\u6210\u529f,\u8c03\u7528 initBDConvert"

    .line 65
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-void
.end method
