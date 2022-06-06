User.create!(
    company: "123",
    name: "user1",
    email: "user1@sample.com",
    password: "password",
    password_confirmation: "password",
    is_admin: true
)

User.create!(
    company: "123",
    name: "user2",
    email: "user2@sample.com",
    password: "password",
    password_confirmation: "password",
    is_admin: false
)

User.create!(
    company: "123",
    name: "user3",
    email: "user3@sample.com",
    password: "password",
    password_confirmation: "password",
    is_admin: false
)

User.create!(
    company: "123",
    name: "user4",
    email: "user4@sample.com",
    password: "password",
    password_confirmation: "password",
    is_admin: false
)

User.create!(
    company: "123",
    name: "user5",
    email: "user5@sample.com",
    password: "password",
    password_confirmation: "password",
    is_admin: false
)

quiz = Quiz.create!(
    question: "シリア北部の都市アレッポでは、地場産業としてある日用品が盛んに製造されていることで有名です。それは何でしょうか？",
    answer: "石鹸  解説: シリア・アラブ共和国の『アレッポの旧市街』は、メソポタミアとヨーロッパをつなぐ要衝地として古くから栄えてきました。 石鹸の製造が盛んなことで有名で、その歴史は1,000年以上前にさかのぼるとも言われています。アレッポ石鹸は、オリーブオイルとローレルオイルで作られており、ヨーロッパや日本にも数多く輸出されています。 しかし、2011年から始まったシリア内戦によって街が壊滅的な被害を受け、多くの製造工場が閉鎖を余儀なくされました。 2013年からは危機遺産リストに記載されています。",
    destination: 0
)
quiz.image.attach(io: File.open(Rails.root.join('app/assets/images/quiz1.jpg')),
                  filename: 'quiz1.jpg'
)

quiz = Quiz.create!(
question: "ヨーン・ウツソンは何を見て、オペラハウスのデザインを思いついたでしょうか。",
answer: "むかれたオレンジの皮  解説: 公募で選ばれたシドニー・オペラハウスのデザインは、ヨーン・ウッツォンが、むかれたオレンジの皮を見て思いついたと言われています。現在では独特のデザインで世界的にシドニーの象徴として認められていますが、そのデザイン故に建設は困難の連続でした。構造設計の困難さや膨れ上がった予算の問題などにより工事は大幅に遅れ、ウッツォンは設計者から辞任せざるを得なくなります。その後インテリアデザインや素材の変更などを経て、1973年にようやく完成しました。",
destination: 2
)
quiz.image.attach(io: File.open(Rails.root.join('app/assets/images/quiz2.jpg')),
                 filename: 'quiz2.jpg'
)

quiz = Quiz.create!(
    question: "広島平和記念碑（原爆ドーム）のように、人類の犯した過ちを記憶に留め教訓とする遺産は、通称で何と呼ばれているでしょうか？",
    answer: "負の遺産",
    destination: 0
)
quiz.image.attach(io: File.open(Rails.root.join('app/assets/images/quiz3.jpg')),
                 filename: 'quiz3.jpg'
)

quiz = Quiz.create!(
    question: "「厳島神社」は、日本の神社建築の傑作の一つです。背後の弥山原始林一帯も登録され、自然景観と建造物が一体となった独創的な神社建築として、高く評価されています。 さて、この弥山原始林の「弥山」の正しい読み方は何でしょう？",
    answer: "みせん  解説: 厳島神社の創建は社伝によると593（推古元）年と伝えられ、その後、平清盛のあつい信仰を受けました。 建築様式や建造物の配置は、設計技術、建築技術の質の高さを表すだけでなく、芸術性の高さも表現しています。 海上に立つ大鳥居で有名ですが、厳島神社本社も海上にせり出す建造物です。古代より神体として崇められてきた弥山（みせん）と本社の配置を中心に、海と山が一体となって、日本人独特の信仰形態と美意識を表現しています。",
    destination: 0
)
quiz.image.attach(io: File.open(Rails.root.join('app/assets/images/quiz4.jpg')),
                 filename: 'quiz4.jpg'
)

quiz = Quiz.create!(
    question: "都市名「ペトラ」とはギリシャ語で何という意味でしょうか？",
    answer: "岩  解説: 岩の細い裂け目を抜けると突然、映画『インディ・ジョーンズ／最後の聖戦』のラストシーンに登場して日本でも有名なカズネ・ファウルンが現れます。青や赤、紫など、さまざまな色合いの縞模様が美しい岩山に囲まれたペトラの建造物の多くは、岩壁に掘り込まれたものです。カズネ・ファウルンの内部には発見当初より何も置かれていませんでした。",
    destination: 1
)
quiz.image.attach(io: File.open(Rails.root.join('app/assets/images/quiz5.jpg')),
                 filename: 'quiz5.jpg'
)