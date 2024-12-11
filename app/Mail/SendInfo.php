<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class SendInfo extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    protected $content; 
    public function __construct($content)
    {
        $this->content = $content;
    }
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->subject('T-MEDECIN : Contact prospect') // Replace 'Your Email Subject' with the desired subject
                    ->markdown('backend.email.send-info')
                    ->with('content', $this->content);
    }
}
