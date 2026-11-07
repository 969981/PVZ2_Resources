.class public Lcom/talkweb/sdk/util/ErrorCodeUtil;
.super Ljava/lang/Object;
.source "ErrorCodeUtil.java"


# static fields
.field public static final HEAD_ERROR:Ljava/lang/String; = "0096"

.field public static final IDENTIFY_CODE_ERROR:Ljava/lang/String; = "0085"

.field public static final INPUT_IDENTIFY_CODE:Ljava/lang/String; = "0086"

.field public static final LOGIN_TYPE_ERROR:Ljava/lang/String; = "0088"

.field public static final ORDER_EXITS:Ljava/lang/String; = "0050"

.field public static final ORDER_NOT_EXITS:Ljava/lang/String; = "0051"

.field public static final PARAMETER_ERROR:Ljava/lang/String; = "0097"

.field public static final PASSWORD_ERROR:Ljava/lang/String; = "0012"

.field public static final PAYWAY_NOFOUND:Ljava/lang/String; = "0094"

.field public static final PHONE_EXISTS:Ljava/lang/String; = "0089"

.field public static final SIGN_ERROR:Ljava/lang/String; = "0090"

.field public static final SMS_DAY_LIMIT:Ljava/lang/String; = "0092"

.field public static final SMS_MINUTE_LIMIT:Ljava/lang/String; = "0093"

.field public static final SYSTEM_ERROR:Ljava/lang/String; = "9999"

.field public static final USER_EXISTS:Ljava/lang/String; = "0091"

.field public static final USER_LOCK:Ljava/lang/String; = "0087"

.field public static final USER_NOFOUND:Ljava/lang/String; = "0011"

.field public static final VERIFY_CODE_ERROR:Ljava/lang/String; = "0095"

.field public static err_map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0012"

    const-string v2, "\u5bc6\u7801\u9519\u8bef"

    .line 101
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0097"

    const-string v2, "\u63a5\u53e3\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0096"

    const-string v2, "\u6e20\u9053\u4fe1\u606f\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0095"

    const-string v2, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0011"

    const-string v3, "\u7528\u6237\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0094"

    const-string v3, "\u652f\u4ed8\u65b9\u5f0f\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0050"

    const-string v3, "\u8ba2\u5355\u5b58\u5728"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0051"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0093"

    const-string v3, "\u4e00\u5206\u949f\u5185\u53ea\u80fd\u83b7\u53d6\u4e00\u6b21\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0092"

    const-string v3, "\u4e00\u5929\u5185\u53ea\u80fd\u83b7\u53d6\u5341\u6b21\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0091"

    const-string v3, "\u7528\u6237\u5df2\u5b58\u5728"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0090"

    const-string v3, "\u7b7e\u540d\u9519\u8bef"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0089"

    const-string v3, "\u53f7\u7801\u5df2\u7ecf\u6ce8\u518c"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0088"

    const-string v3, "\u767b\u5f55\u65b9\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0087"

    const-string v3, "\u5bc6\u7801\u9519\u8bef15\u6b21\u4ee5\u4e0a\uff0c\u8d26\u6237\u88ab\u9501\u5b9a"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "9999"

    const-string v3, "\u7cfb\u7edf\u5fd9"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0086"

    const-string v3, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    const-string v1, "0085"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 122
    sget-object v0, Lcom/talkweb/sdk/util/ErrorCodeUtil;->err_map:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
