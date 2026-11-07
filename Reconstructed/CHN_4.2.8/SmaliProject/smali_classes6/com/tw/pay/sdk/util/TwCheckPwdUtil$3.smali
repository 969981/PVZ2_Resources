.class Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;
.super Ljava/lang/Thread;
.source "TwCheckPwdUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->setNewPwd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

.field final synthetic val$newPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    iput-object p2, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;->val$newPwd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;->this$0:Lcom/tw/pay/sdk/util/TwCheckPwdUtil;

    iget-object v1, p0, Lcom/tw/pay/sdk/util/TwCheckPwdUtil$3;->val$newPwd:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tw/pay/sdk/util/TwCheckPwdUtil;->access$600(Lcom/tw/pay/sdk/util/TwCheckPwdUtil;Ljava/lang/String;)V

    return-void
.end method
