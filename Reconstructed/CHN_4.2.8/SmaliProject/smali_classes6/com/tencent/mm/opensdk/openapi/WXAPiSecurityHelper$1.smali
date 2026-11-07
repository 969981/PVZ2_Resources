.class Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$ISecuritySyncCheck;


# instance fields
.field final synthetic this$0:Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper;

.field final synthetic val$checkCallback:Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$ISecurityCheck;


# direct methods
.method constructor <init>(Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper;Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$ISecurityCheck;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$1;->this$0:Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$1;->val$checkCallback:Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$ISecurityCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncCheckFinish(Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$1;->this$0:Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper;

    iget-object v1, p0, Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$1;->val$checkCallback:Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$ISecurityCheck;

    invoke-static {v0, v1, p1}, Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper;->access$200(Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper;Lcom/tencent/mm/opensdk/openapi/WXAPiSecurityHelper$ISecurityCheck;Z)V

    return-void
.end method
