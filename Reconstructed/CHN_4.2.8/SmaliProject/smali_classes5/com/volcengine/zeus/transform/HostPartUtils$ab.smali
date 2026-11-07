.class public final Lcom/volcengine/zeus/transform/HostPartUtils$ab;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/zeus/transform/HostPartUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ab"
.end annotation


# static fields
.field private static final aNE:Lcom/volcengine/zeus/transform/HostPartUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/volcengine/zeus/transform/HostPartUtils;

    invoke-direct {v0}, Lcom/volcengine/zeus/transform/HostPartUtils;-><init>()V

    sput-object v0, Lcom/volcengine/zeus/transform/HostPartUtils$ab;->aNE:Lcom/volcengine/zeus/transform/HostPartUtils;

    return-void
.end method

.method static synthetic hX()Lcom/volcengine/zeus/transform/HostPartUtils;
    .locals 1

    .line 23
    sget-object v0, Lcom/volcengine/zeus/transform/HostPartUtils$ab;->aNE:Lcom/volcengine/zeus/transform/HostPartUtils;

    return-object v0
.end method
