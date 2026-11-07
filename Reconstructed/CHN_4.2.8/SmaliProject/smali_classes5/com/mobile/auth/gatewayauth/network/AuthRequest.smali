.class public Lcom/mobile/auth/gatewayauth/network/AuthRequest;
.super Lcom/mobile/auth/w/c;


# instance fields
.field private Format:Ljava/lang/String;
    .annotation runtime Lcom/nirvana/tools/jsoner/JsonerTag;
        keyName = "Format"
    .end annotation
.end field

.field private Version:Ljava/lang/String;
    .annotation runtime Lcom/nirvana/tools/jsoner/JsonerTag;
        keyName = "Version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/mobile/auth/w/c;-><init>()V

    const-string v0, "2017-05-25"

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/network/AuthRequest;->Version:Ljava/lang/String;

    const-string v0, "JSON"

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/network/AuthRequest;->Format:Ljava/lang/String;

    return-void
.end method
