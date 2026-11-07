.class public Lcom/bytedance/applog/store/kv/KVStoreConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT_CONFIG:Lcom/bytedance/applog/store/kv/KVStoreConfig;

.field public static final DEFAULT_SECURITY_CONFIG:Lcom/bytedance/applog/store/kv/KVStoreConfig;


# instance fields
.field public aesKey:Ljava/lang/String;

.field public isSecurityMode:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/applog/store/kv/KVStoreConfig;

    invoke-direct {v0}, Lcom/bytedance/applog/store/kv/KVStoreConfig;-><init>()V

    sput-object v0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->DEFAULT_CONFIG:Lcom/bytedance/applog/store/kv/KVStoreConfig;

    new-instance v0, Lcom/bytedance/applog/store/kv/KVStoreConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/bytedance/applog/store/kv/KVStoreConfig;-><init>(Z)V

    sput-object v0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->DEFAULT_SECURITY_CONFIG:Lcom/bytedance/applog/store/kv/KVStoreConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->isSecurityMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->aesKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->isSecurityMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->aesKey:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->isSecurityMode:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->isSecurityMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->aesKey:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->isSecurityMode:Z

    iput-object p2, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->aesKey:Ljava/lang/String;

    return-void
.end method

.method public static createCustomASEKeySecurityConfig(Ljava/lang/String;)Lcom/bytedance/applog/store/kv/KVStoreConfig;
    .locals 2

    new-instance v0, Lcom/bytedance/applog/store/kv/KVStoreConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/applog/store/kv/KVStoreConfig;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getAesKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->aesKey:Ljava/lang/String;

    return-object v0
.end method

.method public isSecurityMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/applog/store/kv/KVStoreConfig;->isSecurityMode:Z

    return v0
.end method
