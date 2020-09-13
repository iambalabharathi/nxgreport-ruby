
module NxgCss

    def has_environment_settings(data_provider)
        data_provider.key?(:environment) || data_provider.key?(:app_version) || data_provider.key?(:release_name) || data_provider.key?(:os) || data_provider.key?(:device) || data_provider.key?(:execution_date)
    end

    def css(data_provider)
        return "<style>
                    :root {
                        --dark-bg: rgb(41, 40, 40);
                        --dark-primary: #050505;
                        --dark-font: rgb(201, 201, 201);
                        --dark-blue: rgb(0, 225, 255);
                        --dark-green: rgba(115, 255, 0, 0.89);
                        --dark-red: rgb(255, 0, 0);
                
                        --light-bg: rgb(226, 226, 226);
                        --light-primary: #fff;
                        --light-font: rgb(44, 44, 44);
                        --light-blue: rgb(1, 67, 165);
                        --light-green: rgb(14, 138, 2);
                        --light-red: rgb(255, 0, 0);
                
                        --font: \"Open Sans\", sans-serif;
                        --danger-bg: rgba(255, 0, 0, 0.185);
                    }
            
                    body {
                        font-family: var(--font);
                        margin: auto;
                    }
            
                    .body-wrapper {
                        display: grid;
                        grid-template-rows: auto auto 1fr;
                        height: 100vh;
                        width: 100vw;
                    }
            
                    .header {
                        display: grid;
                        grid-template-columns: 8fr 1fr;
                        text-align: center;
                        #{data_provider[:title_color]}
                    }

                    .configuration-container {
                        padding-top: 1.5em;
                        display: flex;
                        flex-wrap: wrap;
                        justify-content: space-around;
                        text-align: center;
                    }

                    .configuration-wrapper {
                        display: flex;
                        padding: 0.2em 0.8em;
                    }

                    .configuration-icon {
                        font-size: 1.5em;
                        padding-right: 0.5em;
                    }

                    #configuration-text {
                        font-size: 0.7em;
                    }

                    #filter {
                        cursor: pointer;
                        border-radius: 1em;
                        width: 5em;
                        background-color: var(--light-primary);
                        -webkit-box-shadow: -1px 0px 5px 0px rgba(245, 245, 245, 0.75);
                        -moz-box-shadow: -1px 0px 5px 0px rgba(245, 245, 245, 0.75);
                        box-shadow: -1px 0px 5px 0px rgba(245, 245, 245, 0.75);
                    }
            
                    .mc {
                        display: grid;
                        grid-template-columns: 1fr 1fr 1fr;
                        grid-auto-rows: 70px;
                        grid-gap: 0.5em;
                        padding: 0.5em 2em;
                        padding-top: 1.5em;
                    }
            
                    .footer {
                        margin-bottom: 0.5em;
                        padding: 3em;
                        text-align: center;
                        font-size: 0.7rem;
                        font-weight: 600;
                    }

                    a {
                        cursor: pointer;
                        font-weight: 600;
                    }
            
                    .module {
                        display: grid;
                        place-items: center;
                        grid-template-columns: 3fr 1fr 1fr 1fr;
                        border-radius: 0.7rem;
                        padding: 10px 10px;
                    }
            
                    .button-body-wrapper {
                        place-items: center;
                    }
            
                    #theme-switch {
                        width: 5em;
                        height: 5em;
                        background-color: Transparent;
                        background-repeat: no-repeat;
                        border: none;
                        cursor: pointer;
                        overflow: hidden;
                        outline: none;
                        margin: 0;
                        margin-right: 1em;
                        position: relative;
                        top: 50%;
                        -ms-transform: translateY(-50%);
                        transform: translateY(-50%);
                    }
            
                    h2,
                    h3,
                    h4,
                    h5,
                    h6 {
                        text-align: center;
                        margin: auto;
                    }
            
                    .total,
                    .pass,
                    .fail {
                        display: grid;
                        width: 100%;
                        height: 100%;
                        place-items: center;
                    }
            
                    body.dark {
                        background-color: var(--dark-bg);
                        color: var(--dark-font);
                    }
            
                    body.dark > .body-wrapper > .footer {
                        color: var(--dark-font);
                    }
            
                    body.dark > .body-wrapper > .mc > .module {
                        background-color: var(--dark-primary);
                        color: var(--dark-font);
                    }
            
                    body.dark > .body-wrapper > .mc > .module > .total {
                        color: var(--dark-blue);
                    }
            
                    body.dark > .body-wrapper > .mc > .module > .pass {
                        color: var(--dark-green);
                    }
            
                    body.dark > .body-wrapper > .mc > .module > .fail {
                        color: var(--dark-red);
                    }
            
                    body.dark > .body-wrapper > .mc > .module.danger {
                        background-color: rgba(255, 0, 0, 0.185);
                    }
            
                    body.dark > .body-wrapper > .header {
                        color: var(--dark-primary);
                    }

                    body.dark > .body-wrapper > .configuration-container > .configuration-wrapper {
                        color: var(--dark-font);
                    }

                    body.dark > .body-wrapper > .configuration-container > #filter {
                        background-color: var(--dark-primary);
                        -webkit-box-shadow: -1px 0px 5px 0px rgba(0, 0, 0, 0.75);
                        -moz-box-shadow: -1px 0px 5px 0px rgba(0, 0, 0, 0.75);
                        box-shadow: -1px 0px 5px 0px rgba(0, 0, 0, 0.75);
                    }

                    body.dark > .body-wrapper > .footer > p > span > a {
                        color: var(--dark-font);
                    }
            
                    body.dark > .body-wrapper > .header > div > button > #theme-switch-icon {
                        color: var(--dark-primary);
                    }
            
                    body {
                        background-color: var(--light-bg);
                        color: var(--dark-font);
                    }
            
                    body > .body-wrapper > .footer {
                        color: var(--light-font);
                    }
            
                    body > .body-wrapper > .mc > .module {
                        background-color: var(--light-primary);
                        color: var(--light-font);
                    }
            
                    body > .body-wrapper > .mc > .module > .total {
                        color: var(--light-blue);
                    }
            
                    body > .body-wrapper > .mc > .module > .pass {
                        color: var(--light-green);
                    }
            
                    body > .body-wrapper > .mc > .module > .fail {
                        color: var(--light-red);
                    }
            
                    body > .body-wrapper > .mc > .module.danger {
                        background-color: var(--danger-bg);
                    }
            
                    body > .body-wrapper > .header {
                        color: var(--light-primary);
                    }

                    body > .body-wrapper > .configuration-container > .configuration-wrapper {
                        color: var(--light-font);
                    }

                    body > .body-wrapper > .footer > p > span > a {
                        color: var(--light-font);
                    }
            
                    body > .body-wrapper > .header > div > button > #theme-switch-icon {
                        color: var(--light-primary);
                    }
            
                    @media only screen and (max-width: 600px) {
                        h1 {
                            font-size: 24px;
                        }
            
                        .mc {
                            grid-template-columns: 1fr;
                            padding: 0.5em 0.5em;
                            padding-top: 1em;
                        }

                        .configuration-container {
                            padding-top: 1em;
                        }

                        .configuration-wrapper {
                        padding: 0.5em 1em;
                        }

                        .configuration-icon {
                        font-size: 1em;
                        }

                        #configuration-text {
                        font-size: 0.6em;
                        }

                        #filter {
                            width: 4em;
                        }
                    }
            
                    @media (min-width: 600px) and (max-width: 992px) {
                        .mc {
                            grid-template-columns: 1fr 1fr;
                        }
                    }
                </style>"
    end
end