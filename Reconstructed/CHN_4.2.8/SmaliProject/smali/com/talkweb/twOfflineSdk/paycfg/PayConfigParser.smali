.class public Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;
.super Ljava/lang/Object;
.source "PayConfigParser.java"


# instance fields
.field private payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ParseElement(Lorg/dom4j/Element;)V
    .locals 13

    const-string v0, "value"

    const-string v1, "node.element catched exceptions:"

    const-string v2, "property"

    const-string v3, "paypropertys"

    if-nez p1, :cond_0

    const-string p1, "node is null"

    .line 73
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "merchant"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 77
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 78
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "channels"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 79
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "portal"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 80
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    .line 83
    :cond_1
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "goods"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 85
    new-instance v0, Lcom/talkweb/twOfflineSdk/bean/Goods;

    invoke-direct {v0}, Lcom/talkweb/twOfflineSdk/bean/Goods;-><init>()V

    .line 86
    invoke-direct {p0, v0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->parseAttribute(Ljava/lang/Object;Lorg/dom4j/Element;)V

    .line 87
    iget-object p1, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-virtual {p1}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 88
    :cond_2
    invoke-interface {p1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "paytype"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 90
    new-instance v4, Lcom/talkweb/twOfflineSdk/bean/PayWay;

    invoke-direct {v4}, Lcom/talkweb/twOfflineSdk/bean/PayWay;-><init>()V

    .line 91
    invoke-direct {p0, v4, p1}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->parseAttribute(Ljava/lang/Object;Lorg/dom4j/Element;)V

    :try_start_0
    const-string v5, "channelpropertys"

    .line 94
    invoke-interface {p1, v5}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 95
    invoke-interface {v5}, Lorg/dom4j/Element;->elementIterator()Ljava/util/Iterator;

    move-result-object v5

    .line 96
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/dom4j/Element;

    .line 99
    invoke-static {v6, v4}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->parseElement(Lorg/dom4j/Element;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    :cond_3
    :try_start_1
    const-string v5, "paygoods"

    .line 107
    invoke-interface {p1, v5}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p1

    const-string v5, "paygood"

    .line 108
    invoke-interface {p1, v5}, Lorg/dom4j/Element;->elementIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    const/4 v5, 0x0

    move v6, v5

    .line 109
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 110
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/dom4j/Element;

    const-string v8, "goodsId"

    .line 111
    invoke-interface {v7, v8}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 112
    iget-object v9, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-virtual {v9}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 114
    iget-object v9, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-virtual {v9}, Lcom/talkweb/twOfflineSdk/bean/PayConfig;->getGoodsList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/talkweb/twOfflineSdk/bean/Goods;

    const-string v10, "money"

    .line 115
    invoke-interface {v7, v10}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 116
    invoke-virtual {v9, v10}, Lcom/talkweb/twOfflineSdk/bean/Goods;->setPrice(Ljava/lang/String;)V

    const-string v11, ""

    .line 118
    invoke-interface {v7, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 119
    invoke-interface {v7, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    invoke-interface {v12, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 121
    invoke-interface {v7, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 122
    invoke-interface {v12, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 123
    invoke-interface {v12, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 124
    invoke-interface {v7, v3}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 125
    invoke-interface {v7, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 126
    invoke-interface {v7, v0}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_5
    const/4 v7, 0x0

    .line 131
    :try_start_2
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    :try_start_3
    const-string v10, "\u4ef7\u683c\u8f6c\u6362float\u7c7b\u578b\u5931\u8d25"

    .line 133
    invoke-static {v10}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    .line 136
    :goto_2
    invoke-virtual {v9}, Lcom/talkweb/twOfflineSdk/bean/Goods;->getGoodsId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v4, v10, v5}, Lcom/talkweb/twOfflineSdk/tools/Tools;->getPriceByPayWay(FLcom/talkweb/twOfflineSdk/bean/PayWay;Ljava/lang/String;Z)F

    move-result v7

    .line 137
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setRealPrice(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v4, v8}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setGoodsID(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->clone()Lcom/talkweb/twOfflineSdk/bean/PayWay;

    move-result-object v7

    .line 140
    invoke-virtual {v7, v11}, Lcom/talkweb/twOfflineSdk/bean/PayWay;->setFeeCode(Ljava/lang/String;)V

    .line 142
    iget-object v8, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-static {v7, v9, v8}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->checkCarrierAndFeeCode(Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/Goods;Lcom/talkweb/twOfflineSdk/bean/PayConfig;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 144
    iget-object v8, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-static {v9, v7, v8}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->addPayWayToGood(Lcom/talkweb/twOfflineSdk/bean/Goods;Lcom/talkweb/twOfflineSdk/bean/PayWay;Lcom/talkweb/twOfflineSdk/bean/PayConfig;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_4

    .line 82
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    invoke-direct {p0, v0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->parseAttribute(Ljava/lang/Object;Lorg/dom4j/Element;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public static decryptContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "-"

    .line 200
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/talkweb/twOfflineSdk/tools/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 v0, 0x0

    .line 208
    :try_start_1
    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/Des;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    return-object v0
.end method

.method private parseAttribute(Ljava/lang/Object;Lorg/dom4j/Element;)V
    .locals 1

    .line 56
    invoke-interface {p2}, Lorg/dom4j/Element;->attributes()Ljava/util/List;

    move-result-object p2

    .line 58
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 60
    check-cast v0, Lorg/dom4j/Attribute;

    invoke-static {v0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigUtil;->parseAttribute(Lorg/dom4j/Attribute;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 2

    .line 165
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 167
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAXReader catched exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2

    .line 182
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 184
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 185
    invoke-virtual {v0, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAXReader catched exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public parsePayConfig(Landroid/content/Context;Lcom/talkweb/twOfflineSdk/bean/PayConfig;Ljava/lang/String;)Lcom/talkweb/twOfflineSdk/bean/PayConfig;
    .locals 0

    .line 33
    invoke-static {p3}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->read(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object p1

    .line 35
    iput-object p2, p0, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->payConfig:Lcom/talkweb/twOfflineSdk/bean/PayConfig;

    .line 36
    invoke-virtual {p0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->parsePayConfigByElement(Lorg/dom4j/Element;)V

    const-string p1, "\u89e3\u6790\u5b8c\u6210"

    .line 37
    invoke-static {p1}, Lcom/talkweb/twOfflineSdk/tools/LogUtils;->i(Ljava/lang/String;)V

    return-object p2
.end method

.method public parsePayConfigByElement(Lorg/dom4j/Element;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->ParseElement(Lorg/dom4j/Element;)V

    .line 48
    invoke-interface {p1}, Lorg/dom4j/Element;->elementIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 49
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    .line 51
    invoke-virtual {p0, v0}, Lcom/talkweb/twOfflineSdk/paycfg/PayConfigParser;->parsePayConfigByElement(Lorg/dom4j/Element;)V

    goto :goto_0

    :cond_0
    return-void
.end method
