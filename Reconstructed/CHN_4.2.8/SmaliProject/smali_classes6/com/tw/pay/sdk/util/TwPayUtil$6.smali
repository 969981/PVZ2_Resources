.class Lcom/tw/pay/sdk/util/TwPayUtil$6;
.super Ljava/lang/Object;
.source "TwPayUtil.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwPayUtil;->setGridView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

.field final synthetic val$paywayInfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwPayUtil;Ljava/util/List;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil$6;->val$paywayInfoList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 282
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    iget-object p2, p0, Lcom/tw/pay/sdk/util/TwPayUtil$6;->val$paywayInfoList:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/talkweb/sdk/orm/model/PaywayInfo;

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$702(Lcom/tw/pay/sdk/util/TwPayUtil;Lcom/talkweb/sdk/orm/model/PaywayInfo;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    .line 283
    iget-object p1, p0, Lcom/tw/pay/sdk/util/TwPayUtil$6;->this$0:Lcom/tw/pay/sdk/util/TwPayUtil;

    invoke-static {p1}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$700(Lcom/tw/pay/sdk/util/TwPayUtil;)Lcom/talkweb/sdk/orm/model/PaywayInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tw/pay/sdk/util/TwPayUtil;->access$800(Lcom/tw/pay/sdk/util/TwPayUtil;Lcom/talkweb/sdk/orm/model/PaywayInfo;)V

    return-void
.end method
