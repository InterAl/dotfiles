const { execSync } = require('child_process');
//https://developer.apple.com/library/archive/technotes/tn2450/_index.html
//
const map = {
    '0x700000004': '0x700000050',
    '0x70000001A': '0x700000052',
    '0x700000007': '0x70000004F',
    '0x700000016': '0x700000051'
};

function getRemapStr() {
    const arr = Object.keys(map).reduce((acc, key) => {
        const to = map[key];
        const from = key;

        acc.push({
            HIDKeyboardModifierMappingSrc: from,
            HIDKeyboardModifierMappingDst: to
        }, {
            HIDKeyboardModifierMappingSrc: to,
            HIDKeyboardModifierMappingDst: from
        });

        return acc;
    }, []);

    const ret = {UserKeyMapping: arr};

    let json = JSON.stringify(ret);

    //hex value should be unquoted
    const keys = Object.keys(map).concat(Object.keys(map).map(key => map[key]));
    for (const key of keys) {
        json = json.replace(new RegExp(`"${key}"`, 'g'), key);
    }

    return json;
}

const str = getRemapStr();
const cmd = `hidutil property --set '${str}'`;

execSync(cmd);
