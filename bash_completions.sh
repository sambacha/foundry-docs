_forge() {
    local i cur prev opts cmds
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cmd=""
    opts=""

    for i in ${COMP_WORDS[@]}
    do
        case "${i}" in
            forge)
                cmd="forge"
                ;;
            
            b)
                cmd+="__b"
                ;;
            build)
                cmd+="__build"
                ;;
            c)
                cmd+="__c"
                ;;
            clean)
                cmd+="__clean"
                ;;
            completions)
                cmd+="__completions"
                ;;
            create)
                cmd+="__create"
                ;;
            help)
                cmd+="__help"
                ;;
            i)
                cmd+="__i"
                ;;
            init)
                cmd+="__init"
                ;;
            install)
                cmd+="__install"
                ;;
            r)
                cmd+="__r"
                ;;
            remappings)
                cmd+="__remappings"
                ;;
            remove)
                cmd+="__remove"
                ;;
            run)
                cmd+="__run"
                ;;
            snapshot)
                cmd+="__snapshot"
                ;;
            t)
                cmd+="__t"
                ;;
            test)
                cmd+="__test"
                ;;
            u)
                cmd+="__u"
                ;;
            update)
                cmd+="__update"
                ;;
            verify-contract)
                cmd+="__verify__contract"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        forge)
            opts=" -h -V  --help --version   test build run update install remove remappings verify-contract create init completions clean snapshot help  t  b  r  u  i  r  c  i"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        
        forge__b)
            opts=" -h -V -c -r -o  --optimize --no-auto-detect --force --hardhat --help --version --root --contracts --remappings --remappings-env --lib-paths --out --evm-version --optimize-runs --libraries  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contracts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --out)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --libraries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__build)
            opts=" -h -V -c -r -o  --optimize --no-auto-detect --force --hardhat --help --version --root --contracts --remappings --remappings-env --lib-paths --out --evm-version --optimize-runs --libraries  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contracts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --out)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --libraries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__c)
            opts=" -i -l -t -h -V -c -r -o -f  --optimize --no-auto-detect --force --hardhat --interactive --ledger --trezor --verify --help --version --constructor-args --root --contracts --remappings --remappings-env --lib-paths --out --evm-version --optimize-runs --libraries --rpc-url --from --private-key --keystore --password --mnemonic-path --hd-path --mnemonic_index  <contract> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --constructor-args)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contracts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --out)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --libraries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --rpc-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --from)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --private-key)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --keystore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --mnemonic-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --hd-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --mnemonic_index)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__clean)
            opts=" -h -V  --help --version --root  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__completions)
            opts=" -h -V  --help --version  <shell> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__create)
            opts=" -i -l -t -h -V -c -r -o -f  --optimize --no-auto-detect --force --hardhat --interactive --ledger --trezor --verify --help --version --constructor-args --root --contracts --remappings --remappings-env --lib-paths --out --evm-version --optimize-runs --libraries --rpc-url --from --private-key --keystore --password --mnemonic-path --hd-path --mnemonic_index  <contract> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --constructor-args)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contracts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --out)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --libraries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --rpc-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --from)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --private-key)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --keystore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --password)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --mnemonic-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --hd-path)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --mnemonic_index)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__help)
            opts=" -h -V  --help --version  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__i)
            opts=" -h -V  --help --version  <dependencies>... "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__init)
            opts=" -h -V -t  --help --version --template  <root> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --template)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -t)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__install)
            opts=" -h -V  --help --version  <dependencies>... "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__r)
            opts=" -h -V -e -f -s -c  --optimize --ffi --debug --no-auto-detect --help --version --evm-version --optimize-runs --gas-limit --chain-id --gas-price --block-base-fee-per-gas --tx-origin --block-coinbase --block-timestamp --block-number --block-difficulty --block-gas-limit --evm-type --fork-url --fork-block-number --initial-balance --sender --verbosity --sig --contract  <path> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --chain-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --gas-price)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-base-fee-per-gas)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tx-origin)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-coinbase)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-difficulty)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --initial-balance)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --sender)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verbosity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --sig)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contract)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__remappings)
            opts=" -h -V  --help --version --root --lib-paths  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__remove)
            opts=" -h -V  --help --version  <dependencies>... "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__run)
            opts=" -h -V -e -f -s -c  --optimize --ffi --debug --no-auto-detect --help --version --evm-version --optimize-runs --gas-limit --chain-id --gas-price --block-base-fee-per-gas --tx-origin --block-coinbase --block-timestamp --block-number --block-difficulty --block-gas-limit --evm-type --fork-url --fork-block-number --initial-balance --sender --verbosity --sig --contract  <path> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --chain-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --gas-price)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-base-fee-per-gas)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tx-origin)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-coinbase)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-difficulty)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --initial-balance)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --sender)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verbosity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --sig)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -s)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contract)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__snapshot)
            opts=" -j -h -V -e -f -m -c -r -o  --json --ffi --debug --optimize --no-auto-detect --force --hardhat --asc --desc --help --version --gas-limit --chain-id --gas-price --block-base-fee-per-gas --tx-origin --block-coinbase --block-timestamp --block-number --block-difficulty --block-gas-limit --evm-type --fork-url --fork-block-number --initial-balance --sender --verbosity --match --root --contracts --remappings --remappings-env --lib-paths --out --evm-version --optimize-runs --libraries --allow-failure --min --max --diff --check --format --snap  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --chain-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --gas-price)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-base-fee-per-gas)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tx-origin)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-coinbase)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-difficulty)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --initial-balance)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --sender)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verbosity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --match)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -m)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contracts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --out)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --libraries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-failure)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --min)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --max)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --diff)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --format)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --snap)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__t)
            opts=" -j -h -V -e -f -m -c -r -o  --json --ffi --debug --optimize --no-auto-detect --force --hardhat --help --version --gas-limit --chain-id --gas-price --block-base-fee-per-gas --tx-origin --block-coinbase --block-timestamp --block-number --block-difficulty --block-gas-limit --evm-type --fork-url --fork-block-number --initial-balance --sender --verbosity --match --root --contracts --remappings --remappings-env --lib-paths --out --evm-version --optimize-runs --libraries --allow-failure  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --chain-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --gas-price)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-base-fee-per-gas)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tx-origin)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-coinbase)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-difficulty)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --initial-balance)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --sender)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verbosity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --match)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -m)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contracts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --out)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --libraries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-failure)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__test)
            opts=" -j -h -V -e -f -m -c -r -o  --json --ffi --debug --optimize --no-auto-detect --force --hardhat --help --version --gas-limit --chain-id --gas-price --block-base-fee-per-gas --tx-origin --block-coinbase --block-timestamp --block-number --block-difficulty --block-gas-limit --evm-type --fork-url --fork-block-number --initial-balance --sender --verbosity --match --root --contracts --remappings --remappings-env --lib-paths --out --evm-version --optimize-runs --libraries --allow-failure  "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                --gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --chain-id)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --gas-price)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-base-fee-per-gas)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tx-origin)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-coinbase)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-timestamp)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-difficulty)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --block-gas-limit)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-type)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -e)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-url)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fork-block-number)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --initial-balance)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --sender)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --verbosity)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --match)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -m)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --contracts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -c)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -r)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --remappings-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lib-paths)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --out)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                    -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --evm-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --optimize-runs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --libraries)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-failure)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__u)
            opts=" -h -V  --help --version  <lib> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__update)
            opts=" -h -V  --help --version  <lib> "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        forge__verify__contract)
            opts=" -h -V  --help --version  <contract> <address> <constructor-args>... "
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

complete -F _forge -o bashdefault -o default forge
