.class Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;


# direct methods
.method constructor <init>(Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    iput-object p2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    iput-object p3, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v0, 0x1019

    :try_start_0
    const-string v1, "com.alipay.sdk.app.PayTask"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/app/Activity;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->a:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "pay"

    const/4 v7, 0x2

    :try_start_1
    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v2

    invoke-virtual {v1, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    const/16 v3, 0x1020

    invoke-static {v3, v1}, Lcom/heepay/plugin/e/f;->a(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    const-string v2, "\u5f02\u5e38\u8c03\u7528"

    goto :goto_0

    :catch_1
    iget-object v1, p0, Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g$c;->c:Lcom/heepay/plugin/activity/logic/LogicHyNotityActivity$g;

    const-string v2, "\u8bf7\u68c0\u67e5\u5546\u6237\u7aef\u63d2\u4ef6\u662f\u5426\u5b8c\u6574"

    :goto_0
    invoke-static {v0, v2}, Lcom/heepay/plugin/e/f;->a(ILjava/lang/String;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method
