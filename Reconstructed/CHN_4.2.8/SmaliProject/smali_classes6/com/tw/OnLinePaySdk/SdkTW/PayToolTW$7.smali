.class Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;
.super Ljava/lang/Object;
.source "PayToolTW.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->showPaylDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

.field final synthetic val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

.field final synthetic val$orderNumber:Ljava/lang/String;

.field final synthetic val$price:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    iput-object p2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->val$orderNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->val$price:Ljava/lang/String;

    iput-object p4, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 443
    iget-object p1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->this$0:Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;

    invoke-static {p1}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$100(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->val$orderNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->val$price:Ljava/lang/String;

    iget-object v2, p0, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW$7;->val$callback:Lcom/tw/OnLinePaySdk/callback/TWCallback;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->access$600(Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tw/OnLinePaySdk/callback/TWCallback;)V

    .line 445
    sget-object p1, Lcom/tw/OnLinePaySdk/SdkTW/PayToolTW;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
