.class Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;
.super Lcom/talkweb/twOfflineSdk/OrderCallback;
.source "TalkwebProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/talkweb/twOfflineSdk/TalkwebProxy;->checkOrder(Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

.field final synthetic val$callback:Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;

.field final synthetic val$entry:Ljava/util/Map$Entry;

.field final synthetic val$map:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Ljava/util/Map$Entry;Ljava/util/Map;Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->val$map:Ljava/util/Map;

    iput-object p4, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;

    invoke-direct {p0}, Lcom/talkweb/twOfflineSdk/OrderCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public payResult(Ljava/lang/String;)V
    .locals 2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "payResul:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$008(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)I

    const-string v0, "0"

    .line 349
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$200(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {v1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$100(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$200(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 352
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$102(Lcom/talkweb/twOfflineSdk/TalkwebProxy;Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;)Lcom/talkweb/twOfflineSdk/bean/CheckOrderResult;

    goto :goto_0

    .line 354
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u652f\u4ed8\u5931\u8d25size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$200(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->cleanOrder(Ljava/lang/String;Landroid/content/Context;)V

    .line 357
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$000(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$000(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)I

    move-result p1

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->val$map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "returnMap.size():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$200(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    .line 360
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->val$callback:Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;

    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/TalkwebProxy$6;->this$0:Lcom/talkweb/twOfflineSdk/TalkwebProxy;

    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/TalkwebProxy;->access$200(Lcom/talkweb/twOfflineSdk/TalkwebProxy;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/talkweb/twOfflineSdk/callback/CheckOrderCallback;->checkOrderBack(Ljava/util/Map;)V

    :cond_1
    return-void
.end method
