.class public final Lcom/volcengine/zeus/provider/ContentProviderManager$ad;
.super Lcom/volcengine/zeus/provider/ContentProviderManager$ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/volcengine/zeus/provider/ContentProviderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ad"
.end annotation


# instance fields
.field public final aMX:Landroid/content/pm/ProviderInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    .line 87
    iget-object v0, p3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/volcengine/zeus/provider/ContentProviderManager$ac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iput-object p3, p0, Lcom/volcengine/zeus/provider/ContentProviderManager$ad;->aMX:Landroid/content/pm/ProviderInfo;

    return-void
.end method
